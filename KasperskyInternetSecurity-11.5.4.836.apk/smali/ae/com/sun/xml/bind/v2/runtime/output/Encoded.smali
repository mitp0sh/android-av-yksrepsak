.class public final Lae/com/sun/xml/bind/v2/runtime/output/Encoded;
.super Ljava/lang/Object;
.source "Encoded.java"


# static fields
.field private static final attributeEntities:[[B

.field private static final entities:[[B


# instance fields
.field public buf:[B

.field public len:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v1, 0x80

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    new-array v0, v1, [[B

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->entities:[[B

    .line 195
    new-array v0, v1, [[B

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->attributeEntities:[[B

    .line 198
    const/16 v0, 0x26

    const-string v1, "&amp;"

    invoke-static {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->add(CLjava/lang/String;Z)V

    .line 199
    const/16 v0, 0x3c

    const-string v1, "&lt;"

    invoke-static {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->add(CLjava/lang/String;Z)V

    .line 200
    const/16 v0, 0x3e

    const-string v1, "&gt;"

    invoke-static {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->add(CLjava/lang/String;Z)V

    .line 201
    const/16 v0, 0x22

    const-string v1, "&quot;"

    invoke-static {v0, v1, v3}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->add(CLjava/lang/String;Z)V

    .line 202
    const/16 v0, 0x9

    const-string v1, "&#x9;"

    invoke-static {v0, v1, v3}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->add(CLjava/lang/String;Z)V

    .line 203
    const/16 v0, 0xd

    const-string v1, "&#xD;"

    invoke-static {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->add(CLjava/lang/String;Z)V

    .line 204
    const/16 v0, 0xa

    const-string v1, "&#xA;"

    invoke-static {v0, v1, v3}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->add(CLjava/lang/String;Z)V

    .line 205
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->set(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method private static add(CLjava/lang/String;Z)V
    .locals 2
    .param p0, "c"    # C
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "attOnly"    # Z

    .prologue
    .line 208
    invoke-static {p1}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 209
    .local v0, "image":[B
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->attributeEntities:[[B

    aput-object v0, v1, p0

    .line 210
    if-nez p2, :cond_0

    .line 211
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->entities:[[B

    aput-object v0, v1, p0

    .line 212
    :cond_0
    return-void
.end method

.method private writeEntity([BI)I
    .locals 3
    .param p1, "entity"    # [B
    .param p2, "ptr"    # I

    .prologue
    .line 159
    const/4 v0, 0x0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    array-length v2, p1

    invoke-static {p1, v0, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    array-length v0, p1

    add-int/2addr v0, p2

    return v0
.end method


# virtual methods
.method public append(C)V
    .locals 3
    .param p1, "b"    # C

    .prologue
    .line 175
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->len:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->len:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 176
    return-void
.end method

.method public compact()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 183
    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->len:I

    new-array v0, v1, [B

    .line 184
    .local v0, "b":[B
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    .line 186
    return-void
.end method

.method public ensureSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 65
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    .line 66
    :cond_1
    return-void
.end method

.method public final set(Ljava/lang/String;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 71
    .local v2, "length":I
    mul-int/lit8 v6, v2, 0x3

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->ensureSize(I)V

    .line 73
    const/4 v3, 0x0

    .line 75
    .local v3, "ptr":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v4, v3

    .end local v3    # "ptr":I
    .local v4, "ptr":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 77
    .local v0, "chr":C
    const/16 v6, 0x7f

    if-le v0, v6, :cond_2

    .line 78
    const/16 v6, 0x7ff

    if-le v0, v6, :cond_1

    .line 79
    const v6, 0xd800

    if-gt v6, v0, :cond_0

    const v6, 0xdfff

    if-gt v0, v6, :cond_0

    .line 81
    and-int/lit16 v6, v0, 0x3ff

    shl-int/lit8 v6, v6, 0xa

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    and-int/lit16 v7, v7, 0x3ff

    or-int/2addr v6, v7

    const/high16 v7, 0x10000

    add-int v5, v6, v7

    .line 83
    .local v5, "uc":I
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    shr-int/lit8 v7, v5, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 84
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "ptr":I
    .restart local v4    # "ptr":I
    shr-int/lit8 v7, v5, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    .line 85
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 86
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "ptr":I
    .restart local v4    # "ptr":I
    and-int/lit8 v7, v5, 0x3f

    add-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    move v3, v4

    .line 75
    .end local v4    # "ptr":I
    .end local v5    # "uc":I
    .restart local v3    # "ptr":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3    # "ptr":I
    .restart local v4    # "ptr":I
    goto :goto_0

    .line 89
    :cond_0
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    shr-int/lit8 v7, v0, 0xc

    add-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 90
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "ptr":I
    .restart local v4    # "ptr":I
    shr-int/lit8 v7, v0, 0x6

    and-int/lit8 v7, v7, 0x3f

    add-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    move v3, v4

    .line 94
    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    :goto_2
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "ptr":I
    .restart local v4    # "ptr":I
    and-int/lit8 v7, v0, 0x3f

    add-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    move v3, v4

    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    goto :goto_1

    .line 92
    .end local v3    # "ptr":I
    .restart local v4    # "ptr":I
    :cond_1
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    shr-int/lit8 v7, v0, 0x6

    add-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    goto :goto_2

    .line 96
    .end local v3    # "ptr":I
    .restart local v4    # "ptr":I
    :cond_2
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    int-to-byte v7, v0

    aput-byte v7, v6, v4

    goto :goto_1

    .line 100
    .end local v0    # "chr":C
    .end local v3    # "ptr":I
    .restart local v4    # "ptr":I
    :cond_3
    iput v4, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->len:I

    .line 101
    return-void
.end method

.method public final setEscape(Ljava/lang/String;Z)V
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isAttribute"    # Z

    .prologue
    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 112
    .local v3, "length":I
    mul-int/lit8 v9, v3, 0x6

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p0, v9}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->ensureSize(I)V

    .line 114
    const/4 v4, 0x0

    .line 116
    .local v4, "ptr":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v5, v4

    .end local v4    # "ptr":I
    .local v5, "ptr":I
    :goto_0
    if-ge v2, v3, :cond_6

    .line 117
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 119
    .local v0, "chr":C
    move v6, v5

    .line 120
    .local v6, "ptr1":I
    const/16 v9, 0x7f

    if-le v0, v9, :cond_2

    .line 121
    const/16 v9, 0x7ff

    if-le v0, v9, :cond_1

    .line 122
    const v9, 0xd800

    if-gt v9, v0, :cond_0

    const v9, 0xdfff

    if-gt v0, v9, :cond_0

    .line 124
    and-int/lit16 v9, v0, 0x3ff

    shl-int/lit8 v9, v9, 0xa

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    and-int/lit16 v10, v10, 0x3ff

    or-int/2addr v9, v10

    const/high16 v10, 0x10000

    add-int v8, v9, v10

    .line 126
    .local v8, "uc":I
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    shr-int/lit8 v10, v8, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    aput-byte v10, v9, v5

    .line 127
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    shr-int/lit8 v10, v8, 0xc

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v9, v4

    .line 128
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    shr-int/lit8 v10, v8, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v9, v5

    .line 129
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    and-int/lit8 v10, v8, 0x3f

    add-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v9, v4

    move v4, v5

    .line 116
    .end local v5    # "ptr":I
    .end local v8    # "uc":I
    .restart local v4    # "ptr":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    goto :goto_0

    .line 132
    :cond_0
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr1":I
    .local v7, "ptr1":I
    shr-int/lit8 v10, v0, 0xc

    add-int/lit16 v10, v10, 0xe0

    int-to-byte v10, v10

    aput-byte v10, v9, v6

    .line 133
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr1":I
    .restart local v6    # "ptr1":I
    shr-int/lit8 v10, v0, 0x6

    and-int/lit8 v10, v10, 0x3f

    add-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v9, v7

    .line 137
    :goto_2
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr1":I
    .restart local v7    # "ptr1":I
    and-int/lit8 v10, v0, 0x3f

    add-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v9, v6

    move v6, v7

    .line 153
    .end local v7    # "ptr1":I
    .restart local v6    # "ptr1":I
    :goto_3
    move v4, v6

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    goto :goto_1

    .line 135
    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    :cond_1
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr1":I
    .restart local v7    # "ptr1":I
    shr-int/lit8 v10, v0, 0x6

    add-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    aput-byte v10, v9, v6

    move v6, v7

    .end local v7    # "ptr1":I
    .restart local v6    # "ptr1":I
    goto :goto_2

    .line 141
    :cond_2
    sget-object v9, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->attributeEntities:[[B

    aget-object v1, v9, v0

    .local v1, "ent":[B
    if-eqz v1, :cond_5

    .line 146
    if-nez p2, :cond_3

    sget-object v9, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->entities:[[B

    aget-object v9, v9, v0

    if-eqz v9, :cond_4

    .line 147
    :cond_3
    invoke-direct {p0, v1, v6}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->writeEntity([BI)I

    move-result v6

    goto :goto_3

    .line 149
    :cond_4
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr1":I
    .restart local v7    # "ptr1":I
    int-to-byte v10, v0

    aput-byte v10, v9, v6

    move v6, v7

    .end local v7    # "ptr1":I
    .restart local v6    # "ptr1":I
    goto :goto_3

    .line 151
    :cond_5
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr1":I
    .restart local v7    # "ptr1":I
    int-to-byte v10, v0

    aput-byte v10, v9, v6

    move v6, v7

    .end local v7    # "ptr1":I
    .restart local v6    # "ptr1":I
    goto :goto_3

    .line 155
    .end local v0    # "chr":C
    .end local v1    # "ent":[B
    .end local v6    # "ptr1":I
    :cond_6
    iput v5, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->len:I

    .line 156
    return-void
.end method

.method public final write(Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;)V
    .locals 3
    .param p1, "out"    # Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    const/4 v1, 0x0

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->len:I

    invoke-virtual {p1, v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->write([BII)V

    .line 168
    return-void
.end method
