.class public final Lae/com/sun/xml/bind/DatatypeConverterImpl;
.super Ljava/lang/Object;
.source "DatatypeConverterImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/DatatypeConverterImpl$CalendarFormatter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final PADDING:B = 0x7ft

.field private static final datatypeFactory:Ljavax/xml/datatype/DatatypeFactory;

.field private static final decodeMap:[B

.field private static final encodeMap:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    const-class v1, Lae/com/sun/xml/bind/DatatypeConverterImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lae/com/sun/xml/bind/DatatypeConverterImpl;->$assertionsDisabled:Z

    .line 422
    invoke-static {}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->initDecodeMap()[B

    move-result-object v1

    sput-object v1, Lae/com/sun/xml/bind/DatatypeConverterImpl;->decodeMap:[B

    .line 549
    invoke-static {}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->initEncodeMap()[C

    move-result-object v1

    sput-object v1, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encodeMap:[C

    .line 740
    :try_start_0
    invoke-static {}, Ljavax/xml/datatype/DatatypeFactory;->newInstance()Ljavax/xml/datatype/DatatypeFactory;

    move-result-object v1

    sput-object v1, Lae/com/sun/xml/bind/DatatypeConverterImpl;->datatypeFactory:Ljavax/xml/datatype/DatatypeFactory;
    :try_end_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    return-void

    .line 75
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 741
    :catch_0
    move-exception v0

    .line 742
    .local v0, "e":Ljavax/xml/datatype/DatatypeConfigurationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static _parseBase64Binary(Ljava/lang/String;)[B
    .locals 14
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 507
    invoke-static {p0}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->guessLength(Ljava/lang/String;)I

    move-result v0

    .line 508
    .local v0, "buflen":I
    new-array v7, v0, [B

    .line 509
    .local v7, "out":[B
    const/4 v5, 0x0

    .line 511
    .local v5, "o":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 514
    .local v3, "len":I
    const/4 v12, 0x4

    new-array v10, v12, [B

    .line 515
    .local v10, "quadruplet":[B
    const/4 v8, 0x0

    .line 518
    .local v8, "q":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v9, v8

    .end local v8    # "q":I
    .local v9, "q":I
    move v6, v5

    .end local v5    # "o":I
    .local v6, "o":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 519
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 520
    .local v1, "ch":C
    sget-object v12, Lae/com/sun/xml/bind/DatatypeConverterImpl;->decodeMap:[B

    aget-byte v11, v12, v1

    .line 522
    .local v11, "v":B
    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    .line 523
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "q":I
    .restart local v8    # "q":I
    aput-byte v11, v10, v9

    .line 526
    :goto_1
    const/4 v12, 0x4

    if-ne v8, v12, :cond_4

    .line 528
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "o":I
    .restart local v5    # "o":I
    const/4 v12, 0x0

    aget-byte v12, v10, v12

    shl-int/lit8 v12, v12, 0x2

    const/4 v13, 0x1

    aget-byte v13, v10, v13

    shr-int/lit8 v13, v13, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v7, v6

    .line 529
    const/4 v12, 0x2

    aget-byte v12, v10, v12

    const/16 v13, 0x7f

    if-eq v12, v13, :cond_0

    .line 530
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "o":I
    .restart local v6    # "o":I
    const/4 v12, 0x1

    aget-byte v12, v10, v12

    shl-int/lit8 v12, v12, 0x4

    const/4 v13, 0x2

    aget-byte v13, v10, v13

    shr-int/lit8 v13, v13, 0x2

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v7, v5

    move v5, v6

    .line 532
    .end local v6    # "o":I
    .restart local v5    # "o":I
    :cond_0
    const/4 v12, 0x3

    aget-byte v12, v10, v12

    const/16 v13, 0x7f

    if-eq v12, v13, :cond_1

    .line 533
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "o":I
    .restart local v6    # "o":I
    const/4 v12, 0x2

    aget-byte v12, v10, v12

    shl-int/lit8 v12, v12, 0x6

    const/4 v13, 0x3

    aget-byte v13, v10, v13

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v7, v5

    move v5, v6

    .line 535
    .end local v6    # "o":I
    .restart local v5    # "o":I
    :cond_1
    const/4 v8, 0x0

    .line 518
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v9, v8

    .end local v8    # "q":I
    .restart local v9    # "q":I
    move v6, v5

    .end local v5    # "o":I
    .restart local v6    # "o":I
    goto :goto_0

    .line 539
    .end local v1    # "ch":C
    .end local v11    # "v":B
    :cond_2
    if-ne v0, v6, :cond_3

    .line 547
    .end local v7    # "out":[B
    :goto_3
    return-object v7

    .line 545
    .restart local v7    # "out":[B
    :cond_3
    new-array v4, v6, [B

    .line 546
    .local v4, "nb":[B
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v7, v12, v4, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v4

    .line 547
    goto :goto_3

    .end local v4    # "nb":[B
    .end local v9    # "q":I
    .restart local v1    # "ch":C
    .restart local v8    # "q":I
    .restart local v11    # "v":B
    :cond_4
    move v5, v6

    .end local v6    # "o":I
    .restart local v5    # "o":I
    goto :goto_2

    .end local v5    # "o":I
    .end local v8    # "q":I
    .restart local v6    # "o":I
    .restart local v9    # "q":I
    :cond_5
    move v8, v9

    .end local v9    # "q":I
    .restart local v8    # "q":I
    goto :goto_1
.end method

.method public static _parseBoolean(Ljava/lang/CharSequence;)Ljava/lang/Boolean;
    .locals 14
    .param p0, "literal"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 232
    if-nez p0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-object v9

    .line 236
    :cond_1
    const/4 v1, 0x0

    .line 237
    .local v1, "i":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 239
    .local v3, "len":I
    const/4 v8, 0x0

    .line 241
    .local v8, "value":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 246
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 247
    .local v0, "ch":C
    invoke-static {v0}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v10

    if-eqz v10, :cond_2

    if-lt v2, v3, :cond_c

    .line 249
    :cond_2
    const/4 v5, 0x0

    .line 251
    .local v5, "strIndex":I
    sparse-switch v0, :sswitch_data_0

    move v1, v2

    .line 289
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v3, :cond_4

    .line 291
    :goto_3
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 292
    invoke-static {v0}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v10

    if-eqz v10, :cond_3

    if-lt v2, v3, :cond_9

    :cond_3
    move v1, v2

    .line 295
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_4
    if-ne v1, v3, :cond_0

    .line 296
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_0

    .line 253
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_0
    const/4 v8, 0x1

    move v1, v2

    .line 254
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 256
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_1
    const/4 v8, 0x0

    move v1, v2

    .line 257
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 259
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_2
    const-string v7, "rue"

    .local v7, "strTrue":Ljava/lang/String;
    move v1, v2

    .line 261
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_4
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 262
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "strIndex":I
    .local v6, "strIndex":I
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v0, :cond_5

    if-ge v2, v3, :cond_5

    if-lt v6, v12, :cond_b

    .line 264
    :cond_5
    if-ne v6, v12, :cond_6

    .line 265
    const/4 v8, 0x1

    move v5, v6

    .end local v6    # "strIndex":I
    .restart local v5    # "strIndex":I
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 267
    .end local v1    # "i":I
    .end local v5    # "strIndex":I
    .restart local v2    # "i":I
    .restart local v6    # "strIndex":I
    :cond_6
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_0

    .line 273
    .end local v6    # "strIndex":I
    .end local v7    # "strTrue":Ljava/lang/String;
    .restart local v5    # "strIndex":I
    :sswitch_3
    const-string v4, "alse"

    .local v4, "strFalse":Ljava/lang/String;
    move v1, v2

    .line 275
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_5
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 276
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "strIndex":I
    .restart local v6    # "strIndex":I
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v0, :cond_7

    if-ge v2, v3, :cond_7

    if-lt v6, v13, :cond_a

    .line 279
    :cond_7
    if-ne v6, v13, :cond_8

    .line 280
    const/4 v8, 0x0

    move v5, v6

    .end local v6    # "strIndex":I
    .restart local v5    # "strIndex":I
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 282
    .end local v1    # "i":I
    .end local v5    # "strIndex":I
    .restart local v2    # "i":I
    .restart local v6    # "strIndex":I
    :cond_8
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_0

    .end local v4    # "strFalse":Ljava/lang/String;
    .end local v6    # "strIndex":I
    .restart local v5    # "strIndex":I
    :cond_9
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .end local v1    # "i":I
    .end local v5    # "strIndex":I
    .restart local v2    # "i":I
    .restart local v4    # "strFalse":Ljava/lang/String;
    .restart local v6    # "strIndex":I
    :cond_a
    move v5, v6

    .end local v6    # "strIndex":I
    .restart local v5    # "strIndex":I
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_5

    .end local v1    # "i":I
    .end local v4    # "strFalse":Ljava/lang/String;
    .end local v5    # "strIndex":I
    .restart local v2    # "i":I
    .restart local v6    # "strIndex":I
    .restart local v7    # "strTrue":Ljava/lang/String;
    :cond_b
    move v5, v6

    .end local v6    # "strIndex":I
    .restart local v5    # "strIndex":I
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_4

    .end local v1    # "i":I
    .end local v5    # "strIndex":I
    .end local v7    # "strTrue":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_c
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 251
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x31 -> :sswitch_0
        0x66 -> :sswitch_3
        0x74 -> :sswitch_2
    .end sparse-switch
.end method

.method public static _parseByte(Ljava/lang/CharSequence;)B
    .locals 1
    .param p0, "literal"    # Ljava/lang/CharSequence;

    .prologue
    .line 308
    invoke-static {p0}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->_parseInt(Ljava/lang/CharSequence;)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public static _parseDateTime(Ljava/lang/CharSequence;)Ljava/util/GregorianCalendar;
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 369
    invoke-static {p0}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "val":Ljava/lang/String;
    sget-object v1, Lae/com/sun/xml/bind/DatatypeConverterImpl;->datatypeFactory:Ljavax/xml/datatype/DatatypeFactory;

    invoke-virtual {v1, v0}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v1

    return-object v1
.end method

.method public static _parseDecimal(Ljava/lang/CharSequence;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "content"    # Ljava/lang/CharSequence;

    .prologue
    .line 136
    invoke-static {p0}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 138
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static _parseDouble(Ljava/lang/CharSequence;)D
    .locals 3
    .param p0, "_val"    # Ljava/lang/CharSequence;

    .prologue
    .line 208
    invoke-static {p0}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "val":Ljava/lang/String;
    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    const-wide/high16 v1, 0x7ff8000000000000L    # NaN

    .line 228
    :goto_0
    return-wide v1

    .line 213
    :cond_0
    const-string v1, "INF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 216
    :cond_1
    const-string v1, "-INF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->isDigitOrPeriodOrSign(C)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->isDigitOrPeriodOrSign(C)Z

    move-result v1

    if-nez v1, :cond_4

    .line 223
    :cond_3
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :cond_4
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    goto :goto_0
.end method

.method public static _parseFloat(Ljava/lang/CharSequence;)F
    .locals 2
    .param p0, "_val"    # Ljava/lang/CharSequence;

    .prologue
    .line 158
    invoke-static {p0}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "s":Ljava/lang/String;
    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    const/high16 v1, 0x7fc00000    # NaNf

    .line 191
    :goto_0
    return v1

    .line 177
    :cond_0
    const-string v1, "INF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    .line 180
    :cond_1
    const-string v1, "-INF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->isDigitOrPeriodOrSign(C)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->isDigitOrPeriodOrSign(C)Z

    move-result v1

    if-nez v1, :cond_4

    .line 187
    :cond_3
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1

    .line 191
    :cond_4
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_0
.end method

.method public static _parseInt(Ljava/lang/CharSequence;)I
    .locals 8
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 100
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 101
    .local v2, "len":I
    const/4 v4, 0x1

    .line 103
    .local v4, "sign":I
    const/4 v3, 0x0

    .line 105
    .local v3, "r":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 106
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 107
    .local v0, "ch":C
    invoke-static {v0}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_1
    const/16 v5, 0x30

    if-gt v5, v0, :cond_2

    const/16 v5, 0x39

    if-gt v0, v5, :cond_2

    .line 110
    mul-int/lit8 v5, v3, 0xa

    add-int/lit8 v6, v0, -0x30

    add-int v3, v5, v6

    goto :goto_1

    .line 111
    :cond_2
    const/16 v5, 0x2d

    if-ne v0, v5, :cond_3

    .line 112
    const/4 v4, -0x1

    goto :goto_1

    .line 113
    :cond_3
    const/16 v5, 0x2b

    if-eq v0, v5, :cond_0

    .line 116
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not a number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 120
    .end local v0    # "ch":C
    :cond_4
    mul-int v5, v3, v4

    return v5
.end method

.method public static _parseInteger(Ljava/lang/CharSequence;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 82
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->removeOptionalPlus(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static _parseLong(Ljava/lang/CharSequence;)J
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 124
    invoke-static {p0}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->removeOptionalPlus(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static _parseQName(Ljava/lang/CharSequence;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/namespace/QName;
    .locals 10
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "nsc"    # Ljavax/xml/namespace/NamespaceContext;

    .prologue
    .line 319
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 322
    .local v2, "length":I
    const/4 v5, 0x0

    .line 323
    .local v5, "start":I
    :goto_0
    if-ge v5, v2, :cond_0

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 324
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 327
    :cond_0
    move v0, v2

    .line 328
    .local v0, "end":I
    :goto_1
    if-le v0, v5, :cond_1

    add-int/lit8 v7, v0, -0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 329
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 332
    :cond_1
    if-ne v0, v5, :cond_2

    .line 333
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "input is empty"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 342
    :cond_2
    add-int/lit8 v1, v5, 0x1

    .line 343
    .local v1, "idx":I
    :goto_2
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x3a

    if-eq v7, v8, :cond_3

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 347
    :cond_3
    if-ne v1, v0, :cond_5

    .line 348
    const-string v7, ""

    invoke-interface {p1, v7}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, "uri":Ljava/lang/String;
    invoke-interface {p0, v5, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, "localPart":Ljava/lang/String;
    const-string v4, ""

    .line 365
    .local v4, "prefix":Ljava/lang/String;
    :cond_4
    new-instance v7, Ljavax/xml/namespace/QName;

    invoke-direct {v7, v6, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    .line 353
    .end local v3    # "localPart":Ljava/lang/String;
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v6    # "uri":Ljava/lang/String;
    :cond_5
    invoke-interface {p0, v5, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 354
    .restart local v4    # "prefix":Ljava/lang/String;
    add-int/lit8 v7, v1, 0x1

    invoke-interface {p0, v7, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 355
    .restart local v3    # "localPart":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 358
    .restart local v6    # "uri":Ljava/lang/String;
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    .line 361
    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prefix "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not bound to a namespace"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static _parseShort(Ljava/lang/CharSequence;)S
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 128
    invoke-static {p0}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->_parseInt(Ljava/lang/CharSequence;)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public static _printBase64Binary([BII[BI)I
    .locals 7
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "out"    # [B
    .param p4, "ptr"    # I

    .prologue
    const/16 v6, 0x3d

    .line 675
    move-object v0, p3

    .line 676
    .local v0, "buf":[B
    move v3, p2

    .line 678
    .local v3, "remaining":I
    move v1, p1

    .local v1, "i":I
    move v2, p4

    .end local p4    # "ptr":I
    .local v2, "ptr":I
    :goto_0
    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    .line 679
    add-int/lit8 p4, v2, 0x1

    .end local v2    # "ptr":I
    .restart local p4    # "ptr":I
    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v4

    aput-byte v4, v0, v2

    .line 680
    add-int/lit8 v2, p4, 0x1

    .end local p4    # "ptr":I
    .restart local v2    # "ptr":I
    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p0, v5

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    invoke-static {v4}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v4

    aput-byte v4, v0, p4

    .line 683
    add-int/lit8 p4, v2, 0x1

    .end local v2    # "ptr":I
    .restart local p4    # "ptr":I
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v1, 0x2

    aget-byte v5, p0, v5

    shr-int/lit8 v5, v5, 0x6

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    invoke-static {v4}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v4

    aput-byte v4, v0, v2

    .line 686
    add-int/lit8 v2, p4, 0x1

    .end local p4    # "ptr":I
    .restart local v2    # "ptr":I
    add-int/lit8 v4, v1, 0x2

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0x3f

    invoke-static {v4}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v4

    aput-byte v4, v0, p4

    .line 678
    add-int/lit8 v3, v3, -0x3

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 689
    :cond_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 690
    add-int/lit8 p4, v2, 0x1

    .end local v2    # "ptr":I
    .restart local p4    # "ptr":I
    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v4

    aput-byte v4, v0, v2

    .line 691
    add-int/lit8 v2, p4, 0x1

    .end local p4    # "ptr":I
    .restart local v2    # "ptr":I
    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v4

    aput-byte v4, v0, p4

    .line 692
    add-int/lit8 p4, v2, 0x1

    .end local v2    # "ptr":I
    .restart local p4    # "ptr":I
    aput-byte v6, v0, v2

    .line 693
    add-int/lit8 v2, p4, 0x1

    .end local p4    # "ptr":I
    .restart local v2    # "ptr":I
    aput-byte v6, v0, p4

    .line 696
    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 697
    add-int/lit8 p4, v2, 0x1

    .end local v2    # "ptr":I
    .restart local p4    # "ptr":I
    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v4

    aput-byte v4, v0, v2

    .line 698
    add-int/lit8 v2, p4, 0x1

    .end local p4    # "ptr":I
    .restart local v2    # "ptr":I
    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p0, v5

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    invoke-static {v4}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v4

    aput-byte v4, v0, p4

    .line 701
    add-int/lit8 p4, v2, 0x1

    .end local v2    # "ptr":I
    .restart local p4    # "ptr":I
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v4

    aput-byte v4, v0, v2

    .line 702
    add-int/lit8 v2, p4, 0x1

    .end local p4    # "ptr":I
    .restart local v2    # "ptr":I
    aput-byte v6, v0, p4

    :cond_2
    move p4, v2

    .line 705
    .end local v2    # "ptr":I
    .restart local p4    # "ptr":I
    return p4
.end method

.method public static _printBase64Binary([BII[CI)I
    .locals 6
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "buf"    # [C
    .param p4, "ptr"    # I

    .prologue
    const/16 v5, 0x3d

    .line 599
    move v2, p2

    .line 601
    .local v2, "remaining":I
    move v0, p1

    .local v0, "i":I
    move v1, p4

    .end local p4    # "ptr":I
    .local v1, "ptr":I
    :goto_0
    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 602
    add-int/lit8 p4, v1, 0x1

    .end local v1    # "ptr":I
    .restart local p4    # "ptr":I
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, p3, v1

    .line 603
    add-int/lit8 v1, p4, 0x1

    .end local p4    # "ptr":I
    .restart local v1    # "ptr":I
    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    invoke-static {v3}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, p3, p4

    .line 606
    add-int/lit8 p4, v1, 0x1

    .end local v1    # "ptr":I
    .restart local p4    # "ptr":I
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p0, v4

    shr-int/lit8 v4, v4, 0x6

    and-int/lit8 v4, v4, 0x3

    or-int/2addr v3, v4

    invoke-static {v3}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, p3, v1

    .line 609
    add-int/lit8 v1, p4, 0x1

    .end local p4    # "ptr":I
    .restart local v1    # "ptr":I
    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    invoke-static {v3}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, p3, p4

    .line 601
    add-int/lit8 v2, v2, -0x3

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 612
    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 613
    add-int/lit8 p4, v1, 0x1

    .end local v1    # "ptr":I
    .restart local p4    # "ptr":I
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, p3, v1

    .line 614
    add-int/lit8 v1, p4, 0x1

    .end local p4    # "ptr":I
    .restart local v1    # "ptr":I
    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, p3, p4

    .line 615
    add-int/lit8 p4, v1, 0x1

    .end local v1    # "ptr":I
    .restart local p4    # "ptr":I
    aput-char v5, p3, v1

    .line 616
    add-int/lit8 v1, p4, 0x1

    .end local p4    # "ptr":I
    .restart local v1    # "ptr":I
    aput-char v5, p3, p4

    .line 619
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 620
    add-int/lit8 p4, v1, 0x1

    .end local v1    # "ptr":I
    .restart local p4    # "ptr":I
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, p3, v1

    .line 621
    add-int/lit8 v1, p4, 0x1

    .end local p4    # "ptr":I
    .restart local v1    # "ptr":I
    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    invoke-static {v3}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, p3, p4

    .line 623
    add-int/lit8 p4, v1, 0x1

    .end local v1    # "ptr":I
    .restart local p4    # "ptr":I
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, p3, v1

    .line 624
    add-int/lit8 v1, p4, 0x1

    .end local p4    # "ptr":I
    .restart local v1    # "ptr":I
    aput-char v5, p3, p4

    :cond_2
    move p4, v1

    .line 626
    .end local v1    # "ptr":I
    .restart local p4    # "ptr":I
    return p4
.end method

.method public static _printBase64Binary([B)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # [B

    .prologue
    .line 578
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->_printBase64Binary([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static _printBase64Binary([BII)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 582
    add-int/lit8 v2, p2, 0x2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    new-array v0, v2, [C

    .line 583
    .local v0, "buf":[C
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v0, v2}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->_printBase64Binary([BII[CI)I

    move-result v1

    .line 584
    .local v1, "ptr":I
    sget-boolean v2, Lae/com/sun/xml/bind/DatatypeConverterImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    array-length v2, v0

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 585
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static _printBase64Binary([BIILae/javax/xml/stream/XMLStreamWriter;)V
    .locals 10
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "output"    # Lae/javax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 630
    move v2, p2

    .line 632
    .local v2, "remaining":I
    new-array v0, v9, [C

    .line 634
    .local v0, "buf":[C
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-lt v2, v8, :cond_0

    .line 635
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, v0, v5

    .line 636
    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    invoke-static {v3}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, v0, v6

    .line 639
    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, p0, v4

    shr-int/lit8 v4, v4, 0x6

    and-int/lit8 v4, v4, 0x3

    or-int/2addr v3, v4

    invoke-static {v3}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, v0, v7

    .line 642
    add-int/lit8 v3, v1, 0x2

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    invoke-static {v3}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, v0, v8

    .line 643
    invoke-interface {p3, v0, v5, v9}, Lae/javax/xml/stream/XMLStreamWriter;->writeCharacters([CII)V

    .line 634
    add-int/lit8 v2, v2, -0x3

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 646
    :cond_0
    if-ne v2, v6, :cond_1

    .line 647
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, v0, v5

    .line 648
    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, v0, v6

    .line 649
    const/16 v3, 0x3d

    aput-char v3, v0, v7

    .line 650
    const/16 v3, 0x3d

    aput-char v3, v0, v8

    .line 651
    invoke-interface {p3, v0, v5, v9}, Lae/javax/xml/stream/XMLStreamWriter;->writeCharacters([CII)V

    .line 654
    :cond_1
    if-ne v2, v7, :cond_2

    .line 655
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, v0, v5

    .line 656
    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    invoke-static {v3}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, v0, v6

    .line 658
    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, v0, v7

    .line 659
    const/16 v3, 0x3d

    aput-char v3, v0, v8

    .line 660
    invoke-interface {p3, v0, v5, v9}, Lae/javax/xml/stream/XMLStreamWriter;->writeCharacters([CII)V

    .line 662
    :cond_2
    return-void
.end method

.method public static _printBoolean(Z)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # Z

    .prologue
    .line 304
    if-eqz p0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public static _printByte(B)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # B

    .prologue
    .line 312
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static _printDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p0, "val"    # Ljava/util/Calendar;

    .prologue
    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%Y-%M-%D"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lae/com/sun/xml/bind/DatatypeConverterImpl$CalendarFormatter;->doFormat(Ljava/lang/String;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static _printDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # Ljava/util/Calendar;

    .prologue
    .line 374
    const-string v0, "%Y-%M-%DT%h:%m:%s%z"

    invoke-static {v0, p0}, Lae/com/sun/xml/bind/DatatypeConverterImpl$CalendarFormatter;->doFormat(Ljava/lang/String;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static _printDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # Ljava/math/BigDecimal;

    .prologue
    .line 390
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static _printDouble(D)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # D

    .prologue
    .line 394
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    const-string v0, "NaN"

    .line 403
    :goto_0
    return-object v0

    .line 397
    :cond_0
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_1

    .line 398
    const-string v0, "INF"

    goto :goto_0

    .line 400
    :cond_1
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_2

    .line 401
    const-string v0, "-INF"

    goto :goto_0

    .line 403
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static _printFloat(F)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # F

    .prologue
    .line 195
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "NaN"

    .line 204
    :goto_0
    return-object v0

    .line 198
    :cond_0
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    .line 199
    const-string v0, "INF"

    goto :goto_0

    .line 201
    :cond_1
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_2

    .line 202
    const-string v0, "-INF"

    goto :goto_0

    .line 204
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static _printInt(I)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 382
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static _printInteger(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # Ljava/math/BigInteger;

    .prologue
    .line 86
    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static _printLong(J)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # J

    .prologue
    .line 386
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static _printQName(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;
    .locals 5
    .param p0, "val"    # Ljavax/xml/namespace/QName;
    .param p1, "nsc"    # Ljavax/xml/namespace/NamespaceContext;

    .prologue
    .line 409
    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljavax/xml/namespace/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "localPart":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 413
    :cond_0
    move-object v2, v0

    .line 418
    .local v2, "qname":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 415
    .end local v2    # "qname":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "qname":Ljava/lang/String;
    goto :goto_0
.end method

.method public static _printShort(S)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # S

    .prologue
    .line 132
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(I)C
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 570
    sget-object v0, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encodeMap:[C

    and-int/lit8 v1, p0, 0x3f

    aget-char v0, v0, v1

    return v0
.end method

.method public static encodeByte(I)B
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 574
    sget-object v0, Lae/com/sun/xml/bind/DatatypeConverterImpl;->encodeMap:[C

    and-int/lit8 v1, p0, 0x3f

    aget-char v0, v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method private static guessLength(Ljava/lang/String;)I
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 469
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 472
    .local v2, "len":I
    add-int/lit8 v1, v2, -0x1

    .line 473
    .local v1, "j":I
    :goto_0
    if-ltz v1, :cond_1

    .line 474
    sget-object v4, Lae/com/sun/xml/bind/DatatypeConverterImpl;->decodeMap:[B

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v0, v4, v5

    .line 475
    .local v0, "code":B
    const/16 v4, 0x7f

    if-ne v0, v4, :cond_0

    .line 473
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 478
    :cond_0
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 480
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x3

    .line 494
    .end local v0    # "code":B
    :goto_1
    return v4

    .line 485
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 486
    sub-int v3, v2, v1

    .line 487
    .local v3, "padSize":I
    const/4 v4, 0x2

    if-le v3, v4, :cond_2

    .line 489
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x3

    goto :goto_1

    .line 494
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v4, v3

    goto :goto_1
.end method

.method private static initDecodeMap()[B
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 426
    new-array v1, v3, [B

    .line 428
    .local v1, "map":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 429
    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v2, 0x5a

    if-gt v0, v2, :cond_1

    .line 433
    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 435
    :cond_1
    const/16 v0, 0x61

    :goto_2
    const/16 v2, 0x7a

    if-gt v0, v2, :cond_2

    .line 436
    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 438
    :cond_2
    const/16 v0, 0x30

    :goto_3
    const/16 v2, 0x39

    if-gt v0, v2, :cond_3

    .line 439
    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 441
    :cond_3
    const/16 v2, 0x2b

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    .line 442
    const/16 v2, 0x2f

    const/16 v3, 0x3f

    aput-byte v3, v1, v2

    .line 443
    const/16 v2, 0x3d

    const/16 v3, 0x7f

    aput-byte v3, v1, v2

    .line 445
    return-object v1
.end method

.method private static initEncodeMap()[C
    .locals 4

    .prologue
    const/16 v3, 0x3e

    .line 552
    const/16 v2, 0x40

    new-array v1, v2, [C

    .line 554
    .local v1, "map":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    .line 555
    add-int/lit8 v2, v0, 0x41

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 554
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 557
    :cond_0
    const/16 v0, 0x1a

    :goto_1
    const/16 v2, 0x34

    if-ge v0, v2, :cond_1

    .line 558
    add-int/lit8 v2, v0, -0x1a

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 560
    :cond_1
    const/16 v0, 0x34

    :goto_2
    if-ge v0, v3, :cond_2

    .line 561
    add-int/lit8 v2, v0, -0x34

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 560
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 563
    :cond_2
    const/16 v2, 0x2b

    aput-char v2, v1, v3

    .line 564
    const/16 v2, 0x3f

    const/16 v3, 0x2f

    aput-char v3, v1, v2

    .line 566
    return-object v1
.end method

.method private static isDigitOrPeriodOrSign(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x1

    .line 728
    const/16 v1, 0x30

    if-gt v1, p0, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    .line 734
    :cond_0
    :goto_0
    return v0

    .line 731
    :cond_1
    const/16 v1, 0x2b

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2d

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2e

    if-eq p0, v1, :cond_0

    .line 734
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static removeOptionalPlus(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 709
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 711
    .local v1, "len":I
    if-le v1, v5, :cond_0

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_1

    .line 721
    :cond_0
    return-object p0

    .line 715
    :cond_1
    invoke-interface {p0, v5, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 716
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 717
    .local v0, "ch":C
    const/16 v2, 0x30

    if-gt v2, v0, :cond_2

    const/16 v2, 0x39

    if-le v0, v2, :cond_0

    .line 720
    :cond_2
    const/16 v2, 0x2e

    if-eq v2, v0, :cond_0

    .line 724
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2}, Ljava/lang/NumberFormatException;-><init>()V

    throw v2
.end method
