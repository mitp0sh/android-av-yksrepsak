.class public Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;
.super Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;
.source "UTF8XmlOutput.java"


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final _CLOSE_TAG:[B

.field private static final _EMPTY_TAG:[B

.field private static final _EQUALS:[B

.field private static final _XMLNS_COLON:[B

.field private static final _XMLNS_EQUALS:[B

.field private static final _XML_DECL:[B


# instance fields
.field private final CLOSE_TAG:[B

.field private final EMPTY_TAG:[B

.field private final EQUALS:[B

.field private final XMLNS_COLON:[B

.field private final XMLNS_EQUALS:[B

.field private final XML_DECL:[B

.field protected closeStartTagPending:Z

.field private escapeHandler:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

.field private header:Ljava/lang/String;

.field private final localNames:[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

.field protected final octetBuffer:[B

.field protected octetBufferIndex:I

.field protected final out:Ljava/io/OutputStream;

.field private prefixCount:I

.field private prefixes:[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

.field private final textBuffer:Lae/com/sun/xml/bind/v2/runtime/output/Encoded;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 439
    const-string v0, " xmlns=\""

    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->_XMLNS_EQUALS:[B

    .line 440
    const-string v0, " xmlns:"

    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->_XMLNS_COLON:[B

    .line 441
    const-string v0, "=\""

    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->_EQUALS:[B

    .line 442
    const-string v0, "</"

    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->_CLOSE_TAG:[B

    .line 443
    const-string v0, "/>"

    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->_EMPTY_TAG:[B

    .line 444
    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>"

    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->_XML_DECL:[B

    .line 447
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "localNames"    # [Lae/com/sun/xml/bind/v2/runtime/output/Encoded;
    .param p3, "escapeHandler"    # Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    .prologue
    .line 114
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;-><init>()V

    .line 67
    const/16 v1, 0x8

    new-array v1, v1, [Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->prefixes:[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    .line 86
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    invoke-direct {v1}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;-><init>()V

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->textBuffer:Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    .line 90
    const/16 v1, 0x400

    new-array v1, v1, [B

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBuffer:[B

    .line 100
    const/4 v1, 0x0

    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->closeStartTagPending:Z

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->escapeHandler:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    .line 431
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->_XMLNS_EQUALS:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->XMLNS_EQUALS:[B

    .line 432
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->_XMLNS_COLON:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->XMLNS_COLON:[B

    .line 433
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->_EQUALS:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->EQUALS:[B

    .line 434
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->_CLOSE_TAG:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->CLOSE_TAG:[B

    .line 435
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->_EMPTY_TAG:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->EMPTY_TAG:[B

    .line 436
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->_XML_DECL:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->XML_DECL:[B

    .line 115
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->out:Ljava/io/OutputStream;

    .line 116
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->localNames:[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->prefixes:[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 118
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->prefixes:[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    invoke-direct {v2}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;-><init>()V

    aput-object v2, v1, v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->escapeHandler:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    .line 120
    return-void
.end method

.method private doText(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "isAttribute"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->escapeHandler:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    if-eqz v0, :cond_0

    .line 317
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 318
    .local v5, "sw":Ljava/io/StringWriter;
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->escapeHandler:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;->escape([CIIZLjava/io/Writer;)V

    .line 319
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->textBuffer:Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->set(Ljava/lang/String;)V

    .line 323
    .end local v5    # "sw":Ljava/io/StringWriter;
    :goto_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->textBuffer:Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    invoke-virtual {v0, p0}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->write(Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;)V

    .line 324
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->textBuffer:Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->setEscape(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private pushNsDecls()I
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 174
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v9}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->count()I

    move-result v8

    .line 175
    .local v8, "total":I
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v9}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getCurrent()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    move-result-object v5

    .line 177
    .local v5, "ns":Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->prefixes:[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    array-length v9, v9

    if-le v8, v9, :cond_1

    .line 179
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->prefixes:[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    array-length v9, v9

    mul-int/lit8 v9, v9, 0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 180
    .local v4, "m":I
    new-array v1, v4, [Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    .line 181
    .local v1, "buf":[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->prefixes:[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    iget-object v10, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->prefixes:[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    array-length v10, v10

    invoke-static {v9, v11, v1, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->prefixes:[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    array-length v3, v9

    .local v3, "i":I
    :goto_0
    array-length v9, v1

    if-ge v3, v9, :cond_0

    .line 183
    new-instance v9, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    invoke-direct {v9}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;-><init>()V

    aput-object v9, v1, v3

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    :cond_0
    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->prefixes:[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    .line 187
    .end local v1    # "buf":[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;
    .end local v3    # "i":I
    .end local v4    # "m":I
    :cond_1
    iget v9, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->prefixCount:I

    invoke-virtual {v5}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->getBase()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 188
    .local v0, "base":I
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v9}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->count()I

    move-result v7

    .line 189
    .local v7, "size":I
    move v3, v0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v7, :cond_3

    .line 190
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v9, v3}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getPrefix(I)Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, "p":Ljava/lang/String;
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->prefixes:[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    aget-object v2, v9, v3

    .line 194
    .local v2, "e":Lae/com/sun/xml/bind/v2/runtime/output/Encoded;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 195
    sget-object v9, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->EMPTY_BYTE_ARRAY:[B

    iput-object v9, v2, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    .line 196
    iput v11, v2, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->len:I

    .line 189
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 198
    :cond_2
    invoke-virtual {v2, v6}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->set(Ljava/lang/String;)V

    .line 199
    const/16 v9, 0x3a

    invoke-virtual {v2, v9}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->append(C)V

    goto :goto_2

    .line 202
    .end local v2    # "e":Lae/com/sun/xml/bind/v2/runtime/output/Encoded;
    .end local v6    # "p":Ljava/lang/String;
    :cond_3
    iput v7, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->prefixCount:I

    .line 203
    return v0
.end method

.method static toBytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 423
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [B

    .line 424
    .local v0, "buf":[B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 425
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 424
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 426
    :cond_0
    return-object v0
.end method

.method private writeName(ILjava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # I
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->writePrefix(I)V

    .line 246
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->textBuffer:Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    invoke-virtual {v0, p2}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->set(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->textBuffer:Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    invoke-virtual {v0, p0}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->write(Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;)V

    .line 248
    return-void
.end method

.method private writeName(Lae/com/sun/xml/bind/v2/runtime/Name;)V
    .locals 2
    .param p1, "name"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->nsUriIndex2prefixIndex:[I

    iget-short v1, p1, Lae/com/sun/xml/bind/v2/runtime/Name;->nsUriIndex:S

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->writePrefix(I)V

    .line 241
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->localNames:[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    iget-short v1, p1, Lae/com/sun/xml/bind/v2/runtime/Name;->localNameIndex:S

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->write(Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;)V

    .line 242
    return-void
.end method

.method private writePrefix(I)V
    .locals 1
    .param p1, "prefix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->prefixes:[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    aget-object v0, v0, p1

    invoke-virtual {v0, p0}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->write(Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;)V

    .line 237
    return-void
.end method


# virtual methods
.method public attribute(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # I
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write(I)V

    .line 264
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 265
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->textBuffer:Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    invoke-virtual {v0, p2}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->set(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->textBuffer:Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    invoke-virtual {v0, p0}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->write(Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;)V

    .line 269
    :goto_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->EQUALS:[B

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write([B)V

    .line 270
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->doText(Ljava/lang/String;Z)V

    .line 271
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write(I)V

    .line 272
    return-void

    .line 268
    :cond_0
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->writeName(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public attribute(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write(I)V

    .line 253
    iget-short v0, p1, Lae/com/sun/xml/bind/v2/runtime/Name;->nsUriIndex:S

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 254
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->localNames:[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    iget-short v1, p1, Lae/com/sun/xml/bind/v2/runtime/Name;->localNameIndex:S

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->write(Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;)V

    .line 257
    :goto_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->EQUALS:[B

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write([B)V

    .line 258
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->doText(Ljava/lang/String;Z)V

    .line 259
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write(I)V

    .line 260
    return-void

    .line 256
    :cond_0
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->writeName(Lae/com/sun/xml/bind/v2/runtime/Name;)V

    goto :goto_0
.end method

.method public beginStartTag(ILjava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # I
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->closeStartTag()V

    .line 158
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->pushNsDecls()I

    move-result v0

    .line 159
    .local v0, "base":I
    const/16 v1, 0x3c

    invoke-virtual {p0, v1}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write(I)V

    .line 160
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->writeName(ILjava/lang/String;)V

    .line 161
    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->writeNsDecls(I)V

    .line 162
    return-void
.end method

.method public beginStartTag(Lae/com/sun/xml/bind/v2/runtime/Name;)V
    .locals 2
    .param p1, "name"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->closeStartTag()V

    .line 167
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->pushNsDecls()I

    move-result v0

    .line 168
    .local v0, "base":I
    const/16 v1, 0x3c

    invoke-virtual {p0, v1}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write(I)V

    .line 169
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->writeName(Lae/com/sun/xml/bind/v2/runtime/Name;)V

    .line 170
    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->writeNsDecls(I)V

    .line 171
    return-void
.end method

.method protected final closeStartTag()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->closeStartTagPending:Z

    if-eqz v0, :cond_0

    .line 151
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write(I)V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->closeStartTagPending:Z

    .line 154
    :cond_0
    return-void
.end method

.method public endDocument(Z)V
    .locals 0
    .param p1, "fragment"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->flushBuffer()V

    .line 143
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;->endDocument(Z)V

    .line 144
    return-void
.end method

.method public endStartTag()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->closeStartTagPending:Z

    .line 276
    return-void
.end method

.method public endTag(ILjava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # I
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->closeStartTagPending:Z

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->EMPTY_TAG:[B

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write([B)V

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->closeStartTagPending:Z

    .line 299
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->CLOSE_TAG:[B

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write([B)V

    .line 296
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->writeName(ILjava/lang/String;)V

    .line 297
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write(I)V

    goto :goto_0
.end method

.method public endTag(Lae/com/sun/xml/bind/v2/runtime/Name;)V
    .locals 1
    .param p1, "name"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->closeStartTagPending:Z

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->EMPTY_TAG:[B

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write([B)V

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->closeStartTagPending:Z

    .line 288
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->CLOSE_TAG:[B

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write([B)V

    .line 285
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->writeName(Lae/com/sun/xml/bind/v2/runtime/Name;)V

    .line 286
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write(I)V

    goto :goto_0
.end method

.method protected final flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 418
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBuffer:[B

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBufferIndex:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 419
    iput v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBufferIndex:I

    .line 420
    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->header:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public startDocument(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Z[ILae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)V
    .locals 2
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
    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutputAbstractImpl;->startDocument(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Z[ILae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBufferIndex:I

    .line 131
    if-nez p2, :cond_0

    .line 132
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->XML_DECL:[B

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write([B)V

    .line 134
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->header:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->textBuffer:Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->set(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->textBuffer:Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    invoke-virtual {v0, p0}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->write(Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;)V

    .line 138
    :cond_1
    return-void
.end method

.method public final text(I)V
    .locals 6
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->closeStartTag()V

    .line 334
    if-gez p1, :cond_3

    const/4 v2, 0x1

    .line 335
    .local v2, "minus":Z
    :goto_0
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->textBuffer:Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->ensureSize(I)V

    .line 336
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->textBuffer:Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    iget-object v0, v4, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    .line 337
    .local v0, "buf":[B
    const/16 v1, 0xb

    .line 340
    .local v1, "idx":I
    :cond_0
    rem-int/lit8 v3, p1, 0xa

    .line 341
    .local v3, "r":I
    if-gez v3, :cond_1

    neg-int v3, v3

    .line 342
    :cond_1
    add-int/lit8 v1, v1, -0x1

    or-int/lit8 v4, v3, 0x30

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 343
    div-int/lit8 p1, p1, 0xa

    .line 344
    if-nez p1, :cond_0

    .line 346
    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    const/16 v4, 0x2d

    aput-byte v4, v0, v1

    .line 348
    :cond_2
    rsub-int/lit8 v4, v1, 0xb

    invoke-virtual {p0, v0, v1, v4}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write([BII)V

    .line 349
    return-void

    .line 334
    .end local v0    # "buf":[B
    .end local v1    # "idx":I
    .end local v2    # "minus":Z
    .end local v3    # "r":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public text(Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;Z)V
    .locals 1
    .param p1, "value"    # Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;
    .param p2, "needSP"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->closeStartTag()V

    .line 310
    if-eqz p2, :cond_0

    .line 311
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write(I)V

    .line 312
    :cond_0
    invoke-virtual {p1, p0}, Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;->writeTo(Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;)V

    .line 313
    return-void
.end method

.method public text(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "needSP"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->closeStartTag()V

    .line 303
    if-eqz p2, :cond_0

    .line 304
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write(I)V

    .line 305
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->doText(Ljava/lang/String;Z)V

    .line 306
    return-void
.end method

.method public text([BI)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "dataLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->closeStartTag()V

    .line 361
    const/4 v1, 0x0

    .line 363
    .local v1, "start":I
    :goto_0
    if-lez p2, :cond_1

    .line 365
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBuffer:[B

    array-length v2, v2

    iget v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBufferIndex:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x4

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 368
    .local v0, "batchSize":I
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBuffer:[B

    iget v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBufferIndex:I

    invoke-static {p1, v1, v0, v2, v3}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->_printBase64Binary([BII[BI)I

    move-result v2

    iput v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBufferIndex:I

    .line 370
    if-ge v0, p2, :cond_0

    .line 371
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->flushBuffer()V

    .line 373
    :cond_0
    add-int/2addr v1, v0

    .line 374
    sub-int/2addr p2, v0

    .line 376
    goto :goto_0

    .line 377
    .end local v0    # "batchSize":I
    :cond_1
    return-void
.end method

.method public final write(I)V
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBufferIndex:I

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBuffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 394
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBuffer:[B

    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBufferIndex:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 400
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 397
    const/4 v0, 0x1

    iput v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBufferIndex:I

    .line 398
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBuffer:[B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method protected final write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write([BII)V

    .line 404
    return-void
.end method

.method protected final write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 407
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBufferIndex:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBuffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 408
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBuffer:[B

    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBufferIndex:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBufferIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBufferIndex:I

    .line 415
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBuffer:[B

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBufferIndex:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 412
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 413
    iput v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->octetBufferIndex:I

    goto :goto_0
.end method

.method protected final writeNsDecl(I)V
    .locals 5
    .param p1, "prefixIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v2, p1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getPrefix(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "p":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 221
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getCurrent()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    move-result-object v2

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->isRootElement()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v2, p1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 233
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->XMLNS_EQUALS:[B

    invoke-virtual {p0, v2}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write([B)V

    .line 231
    :goto_1
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v2, p1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->doText(Ljava/lang/String;Z)V

    .line 232
    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write(I)V

    goto :goto_0

    .line 226
    :cond_1
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->prefixes:[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    aget-object v0, v2, p1

    .line 227
    .local v0, "e":Lae/com/sun/xml/bind/v2/runtime/output/Encoded;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->XMLNS_COLON:[B

    invoke-virtual {p0, v2}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write([B)V

    .line 228
    iget-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    const/4 v3, 0x0

    iget v4, v0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->len:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v2, v3, v4}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write([BII)V

    .line 229
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->EQUALS:[B

    invoke-virtual {p0, v2}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write([B)V

    goto :goto_1
.end method

.method protected writeNsDecls(I)V
    .locals 4
    .param p1, "base"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getCurrent()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    move-result-object v1

    .line 208
    .local v1, "ns":Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->count()I

    move-result v2

    .line 210
    .local v2, "size":I
    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->getBase()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 211
    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->writeNsDecl(I)V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method
